# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EcsStabilizer < Formula
  desc "ecs-stabilizer allows you to check to makre sure services are stable"
  homepage "https://github.com/ministryofjustice/opg-ecs-helper"
  version "0.4.1"

  on_macos do
    url "https://github.com/ministryofjustice/opg-ecs-helper/releases/download/v0.4.1/opg-ecs-helper_Darwin_x86_64.tar.gz"
    sha256 "ded5c9f082f882fd8bf424d3c36499a2bce15ce662ca40027742931ec9cbc3f1"

    def install
      bin.install "ecs-stabilizer"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the EcsStabilizer
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ministryofjustice/opg-ecs-helper/releases/download/v0.4.1/opg-ecs-helper_Linux_x86_64.tar.gz"
      sha256 "0e10657c22c092744fe56815a235b9fe0911a5dc96b227395ca559676a488d67"

      def install
        bin.install "ecs-stabilizer"
      end
    end
  end
end
