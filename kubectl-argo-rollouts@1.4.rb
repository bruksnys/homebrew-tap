# This is an auto-generated file. DO NOT EDIT
class KubectlArgoRolloutsAT14 < Formula
    desc "Kubectl Argo Rollouts Plugin."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo-rollouts/releases/download"
    version "v1.4.0"

    if OS.mac?
      kernel = "darwin"
      if Hardware::CPU.intel?
        sha256 "54533eb67a6d355f7c3b2c2a9df99c16062da9ea7cc201c1a464dc44ec3175ad"
        arch = "amd64"
      elsif Hardware::CPU.arm?
        sha256 "7a0bf804ac5123aadf1a70222e30657e673985ec9752d3f62c36c8e41e2dfe5a"
        arch = "arm64"
      end
    elsif OS.linux?
      kernel = "linux"
      if Hardware::CPU.intel?
        sha256 "2096ab5283a31a6a984ce59b996ea6d98c8246fe91dcda7ebf420632a5501dce"
        arch = "amd64"
      elsif Hardware::CPU.arm?
        sha256 "23556b2a68b4dbc359ec430a89fc2ea6da8a3b5fc9cc16261a4a2353f696dfd8"
        arch = "arm64"
      end
    end

    @@bin_name = "kubectl-argo-rollouts-" + kernel + "-" + arch
    url baseurl + "/v1.4.0/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"kubectl-argo-rollouts"
    end
end
