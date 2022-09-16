class Tsk < Formula
  desc "tsk is a terminal task management app with an emphasis on simplicity, efficiency and ease of use"
  homepage "https://github.com/kakengloh/tsk"
  url "https://github.com/kakengloh/tsk/archive/refs/tags/0.4.0.tar.gz"
  sha256 "fad3e05bb521cb8400b3d2af8235bd8ce5d0321e7a569cfe76d4e9bf413efb64"
  license "MIT"
  head "https://github.com/kakengloh/tsk.git", branch: "main"
  version "0.4.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "tsk is a terminal task management app with an emphasis on simplicity, efficiency and ease of use", shell_output("#{bin}/tsk").chomp
  end
end
