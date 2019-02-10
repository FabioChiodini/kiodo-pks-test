$vmdkName = '[vnxfs1] kubevols/kubernetes-dynamic-pvc-8ca0de25-2d3d-11e9-939d-005056b418f4.vmdk'


Get-View -ViewType VirtualMachine -Property Name,Config.Hardware.Device |

where{$_.Config.Hardware.Device | where{$_ -is [VMware.Vim.VirtualDisk] -and $_.Backing.Filename -eq $vmdkName}} |

Select Name
