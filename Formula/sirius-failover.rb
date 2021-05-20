# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SiriusFailover < Formula
  desc "sirius-failover allows you to failover Sirius"
  homepage "https://github.com/ministryofjustice/opg-sirius-failover"
  version "1.1.0-beta.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ministryofjustice/opg-sirius-failover/releases/download/v1.1.0-beta.2/opg-sirius-failover_Darwin_x86_64.tar.gz"
    sha256 "2ef6f53591e086659a0b816711cf1a79dbab713da2734f344f53087b418a11db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ministryofjustice/opg-sirius-failover/releases/download/v1.1.0-beta.2/opg-sirius-failover_Linux_x86_64.tar.gz"
    sha256 "b687889a758ecbe7c2301f7c905d42b55e14a7c03c027ee274c916e3fd0e83fa"
  end

  def install
    bin.install "sirius-failover"
  end
end
