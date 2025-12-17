output "addons" {
  description = "Installed EKS addons"
  value = {
    vpc_cni    = aws_eks_addon.vpc_cni.addon_name
    coredns    = aws_eks_addon.coredns.addon_name
    kube_proxy = aws_eks_addon.kube_proxy.addon_name
    ebs_csi    = aws_eks_addon.ebs_csi.addon_name
  }
}