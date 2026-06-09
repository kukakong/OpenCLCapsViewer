.class Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QtNetworkInformationCallback"
.end annotation


# instance fields
.field public previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 44
    iput-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 47
    return-void
.end method

.method private getTransport(Landroid/net/NetworkCapabilities;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .locals 1

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 77
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 79
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 81
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 83
    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 86
    :cond_4
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 88
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 93
    :cond_5
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1
.end method

.method private setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    if-eq v0, p1, :cond_0

    .line 98
    iput-object p1, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 99
    invoke-virtual {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->ordinal()I

    move-result p1

    invoke-static {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$100(I)V

    .line 101
    :cond_0
    return-void
.end method

.method private setTransportMedium(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    if-eq v0, p1, :cond_0

    .line 105
    iput-object p1, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 106
    invoke-virtual {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->ordinal()I

    move-result p1

    invoke-static {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$200(I)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 52
    const/16 p1, 0xc

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    goto :goto_0

    .line 54
    :cond_0
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    goto :goto_0

    .line 57
    :cond_1
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 59
    :goto_0
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->getTransport(Landroid/net/NetworkCapabilities;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    move-result-object v0

    .line 60
    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    if-ne v0, v1, :cond_2

    .line 61
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    .line 64
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setTransportMedium(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V

    .line 66
    nop

    .line 67
    const/16 p1, 0x11

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    .line 68
    nop

    .line 69
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    .line 70
    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$000(ZZ)V

    .line 71
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 112
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    .line 113
    return-void
.end method
