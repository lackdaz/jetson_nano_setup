What You Need:
--
1. DC 5V/4A Barrel Jack Power Adapter* - [Makersupplies](https://www.makersupplies.sg/collections/jetson-nano-and-accessories/products/5v-4a-5-5-x-2-1mm-barrel-connector-power-adapter)
1. HDMI Monitor
1. Wireless Keyboard and Mouse*
1. USB-A to micro-usb adapter **with dataline**
1. Jumpers - [aliexpress](https://www.aliexpress.com/item/32976996798.html?spm=a2g0o.productlist.0.0.2f36333festGXT&algo_pvid=b73ffa60-b241-4cc8-b8ca-ec898f566e24&algo_expid=b73ffa60-b241-4cc8-b8ca-ec898f566e24-7&btsid=0ab6f81615871249489384053e7f9e&ws_ab_test=searchweb0_0,searchweb201602_,searchweb201603_)
1. Wireless network adapter, M2(see below) or USB(not recommended*)

You can also get these additional hardware for a higher quality-of-life (QOL) development experience:

1. M2 slot Wireless Adapter - [Makersupplies](https://www.makersupplies.sg/collections/jetson-nano-and-accessories/products/intel-dual-band-wireless-ac-8265-module-with-antennas)

*If using the 4A DC jack, the USB wireless adapter and bluetooth wireless transceivers tend to suffer interference from the adjacent power jack related to grounding issues. Related symptoms: keyboard/mouse stutter, network loss.

Flashing the SD Card
--
1. Download the Nvidia SDK Manager onto a Debian machine (Ubuntu Desktop 16.04 and 18.04 on x64 system
) or emulator. Download link [here](https://developer.nvidia.com/nvidia-sdk-manager)
1. Run the SDK Manager, choose the right platforms, as seen below and proceed to the next step:

    ![SDK Setup](./SDK-Step1.png)
    Remember to choose NVIDIA **Jetson Nano (Developer Kit Version)** and not Jetson Nano (Production version)
1. Select Jetson OS and Jetson SDK Components and the downloads will commence (will take some time). Continue to the next step.

    ![SDK Setup](./SDK-Step2.png)
    
1. These steps are tricky. You can follow along with the instructions shown but there are some gotchas. First, you can only use 'Manual Mode' because automatic doesn't work with a SD card that isn't already flashed with the OS. So go ahead and select **Manual Mode**. I'll go step-by-step from here.
    ![SDK Setup](./SDK-Step3.png)
    Remember to choose NVIDIA **Jetson Nano (Developer Kit Version)** and not Jetson Nano (Production version)
1. First unpower the device by removing the DC jack
    ![SDK Setup](./SDK-Step4.jpg)
    Remember to choose NVIDIA **Jetson Nano (Developer Kit Version)** and not Jetson Nano (Production version)
1. Next, attach a jumper to the J48 pin
     ![J48](J48.gif)
1. Insert the J40 RST pins, as pictured:
    ![J40](J40.gif)
1. You can connect the micro-usb from the Nano to your x86 host machine. Also connect your wireless mouse/keyboard adapter and HDMI display for a later step.
1. 
