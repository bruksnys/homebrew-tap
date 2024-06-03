# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT17 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.7.0-rc1"

    if OS.mac?
      kernel = "darwin"
      if Hardware::CPU.intel?
        sha256 "637d9fcda4fc8380b908278ed691b7c52b767bb6a966b0869fbc4c38e722be36"
        arch = "amd64"
      elsif Hardware::CPU.arm?
        sha256 "308a90b7f70ed84a0c46a6999f785bf166f9fef751f9a11b5e3c91bbe7356c3f"
        arch = "arm64"
      end
    elsif OS.linux?
      kernel = "linux"
      if Hardware::CPU.intel?
        sha256 "0a329c8540b79b01dc58d2533e8a6f2130107ecb97cd04c0eff8527689c60e58"
        arch = "amd64"
      elsif Hardware::CPU.arm?
        sha256 "8a30f7e66dee4592d4cb8fafb188edbfeb6e91ef5b17da6da0b187615b59ae35"
        arch = "arm64"
      end
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.7.0-rc1/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
