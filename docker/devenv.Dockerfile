FROM debian:bookworm

WORKDIR /root

RUN apt-get update && apt-get install -y\
    curl\
    git\
    zsh\
    pkg-config\
    libssl-dev\
    build-essential

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY zsh/.zshrc /root/
COPY ohmyzsh/genrythm.zsh-theme /root/.oh-my-zsh/themes/

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly

# Add .cargo/bin to PATH
ENV PATH="/root/.cargo/bin:${PATH}"

# Check cargo is visible
RUN cargo install ripgrep

# Check rustup default
RUN rustup default
RUN rustup component add rust-analyzer

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
RUN chmod u+x nvim.appimage
RUN ./nvim.appimage --appimage-extract
RUN ./squashfs-root/AppRun --version
RUN mv squashfs-root /
RUN ln -s /squashfs-root/AppRun /usr/bin/nvim
RUN rm nvim.appimage

RUN mkdir /root/.config
COPY nvim /root/.config/nvim
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
RUN nvim --headless +TSUpdateSync +qa

CMD ["/bin/zsh"]

