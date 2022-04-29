# Hackintosh-EFI-AsusFH5900VQ
 华硕笔记本FH5900VQ，黑苹果，EFI

### 软件版本
| 软件 | 版本 |
| --- | :--: |
| 系统 | macOS Big Sur 11.6.5 (20G527) |
| 引导 | OpenCore v0.8.0 |

### 自选硬件
|   硬件    |   型号  |
| -------- | :----: |
| 主机 | 华硕 FH5900VQ |
| CPU | Intel Core i7 6700MQ |
| 内存 | 板载DDR4 4G，金士顿 2133MHz 8G*1 |
| 硬盘 | 三星 860EVO，Sata 500GB |
| 显卡 | Intel UHD Graphics 530 |
| 屏幕 | 1080P屏幕 |
| 无线网卡 | 博通 BCM94352HMB |

### 完成度
+ 核显正常驱动，2048MB显存
+ 睡眠正常，不花屏、可唤醒
+ 声卡正常驱动
+ Wi-Fi正常驱动，蓝牙稳定
+ USB定制，所有USB接口正常
+ 另一个硬盘装Win10，OC可引导Win10
+ 引导界面图形化，开机有“duang”声音

### 缺陷
+ 隔空投送只能接收，不能发送
+ 笔记本键盘的“Fn+F数字”功能键，不能控制音量、亮度，只能用菜单栏的滑块调节
+ SD卡读卡器未驱动

### 备注
1. 2021年底，用OC v0.7.4，配合当时最新的驱动，系统版本为macOS Big Sur 11.5.2 (20G95)，可以双向隔空投送；升级了系统版本Big Sur 11.6.5 (20G527)和OC v0.8.0后，就只能单向了。

### 效果图
![关于本机.png](https://github.com/demon3434/Hackintosh-EFI-AsusFH5900VQ/blob/main/OpenCore%20v0.8.0%20%26%20macOS%20Big%20Sur%2011.6.5%20(20G527)%20%26%20BCM94352HMB/1.%E5%85%B3%E4%BA%8E%E6%9C%AC%E6%9C%BA.png "关于本机")
![Hackintool系统信息.png](https://github.com/demon3434/Hackintosh-EFI-AsusFH5900VQ/blob/main/OpenCore%20v0.8.0%20%26%20macOS%20Big%20Sur%2011.6.5%20(20G527)%20%26%20BCM94352HMB/2.Hackintool%E7%B3%BB%E7%BB%9F%E4%BF%A1%E6%81%AF.png "Hackintool系统信息")
