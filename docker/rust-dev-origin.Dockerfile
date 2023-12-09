FROM debian:stable

WORKDIR /root

COPY .ssh /root/.ssh

RUN apt-get update && apt-get install -y\
    curl\
    wget\
    git\
    zsh\
    rsync\
    openssh-client\
    pkg-config\
    libssl-dev\
    libudev-dev\
    llvm\
    clang\
    gcc\
    build-essential

RUN git config --global user.email "nhatphuong0108@gmail.com"
RUN git config --global user.name "GenRythm"

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY zsh/.zshrc /root/
COPY ohmyzsh/genrythm.zsh-theme /root/.oh-my-zsh/themes/

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly

# Add .cargo/bin to PATH
ENV PATH="/root/.cargo/bin:${PATH}"

# Check rustup default
RUN rustup default
RUN rustup component add rust-analyzer

WORKDIR /opt
RUN wget https://github.com/cargo-bins/cargo-binstall/releases/download/v1.3.0/cargo-binstall-x86_64-unknown-linux-gnu.full.tgz
RUN tar -xzf ./cargo-binstall-x86_64-unknown-linux-gnu.full.tgz
RUN mv /opt/cargo-binstall /root/.cargo/bin/
RUN rm /opt/*
RUN yes | cargo binstall cargo-binstall
RUN yes | cargo binstall ripgrep

# Rust ESP
RUN apt update && apt install -y gcc-xtensa-lx106 binutils-xtensa-lx106 # For ESP8266
RUN rustup toolchain install nightly --component rust-src
RUN rustup target add riscv32imc-unknown-none-elf # For ESP32-C2 and ESP32-C3
RUN rustup target add riscv32imac-unknown-none-elf # For ESP32-C6 and ESP32-H2
RUN yes | cargo binstall cargo-generate
RUN yes | cargo binstall espup
RUN yes | cargo binstall espflash
RUN yes | cargo binstall cargo-espflash
RUN espup install
RUN cat /root/export-esp.sh >> /root/.zshrc
RUN cat /root/export-esp.sh >> /root/.bashrc

WORKDIR /root/.rustup/toolchains/esp
RUN curl -O https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
RUN tar -xzf ./xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
RUN rm ./xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz
ENV PATH="/root/.rustup/toolchains/esp/xtensa-lx106-elf/bin:$PATH"

RUN ln -sf /root/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer /root/.rustup/toolchains/esp/bin/rust-analyzer

WORKDIR /root

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
RUN chmod u+x nvim.appimage
RUN ./nvim.appimage --appimage-extract
RUN ./squashfs-root/AppRun --version
RUN mv squashfs-root /opt/
RUN ln -s /opt/squashfs-root/AppRun /usr/bin/nvim
RUN rm nvim.appimage

RUN mkdir /root/.config
COPY nvim /root/.config/nvim
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
RUN nvim --headless -c "TSInstallSync rust" -cq
RUN nvim --headless -c "TSInstallSync c" -cq
RUN nvim --headless -c "TSInstallSync cpp" -cq
RUN nvim --headless -c "TSInstallSync bash" -cq
RUN nvim --headless -c "TSInstallSync cmake" -cq
RUN nvim --headless -c "TSInstallSync diff" -cq
RUN nvim --headless -c "TSInstallSync dockerfile" -cq
RUN nvim --headless -c "TSInstallSync gitignore" -cq
RUN nvim --headless -c "TSInstallSync gitcommit" -cq
RUN nvim --headless -c "TSInstallSync javascript" -cq
RUN nvim --headless -c "TSInstallSync json" -cq
RUN nvim --headless -c "TSInstallSync python" -cq
RUN nvim --headless -c "TSInstallSync lua" -cq
RUN nvim --headless -c "TSInstallSync toml" -cq
RUN nvim --headless -c "TSInstallSync glsl" -cq
RUN nvim --headless -c "TSInstallSync yaml" -cq
RUN nvim --headless -c "TSInstallSync solidity" -cq

CMD ["/bin/bash"]

