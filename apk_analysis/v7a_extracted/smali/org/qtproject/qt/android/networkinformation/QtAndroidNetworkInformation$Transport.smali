.class final enum Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
.super Ljava/lang/Enum;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Transport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Usb:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;


# direct methods
.method private static synthetic $values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .locals 3

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const/4 v1, 0x0

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Usb:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 33
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Bluetooth"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 34
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Cellular"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 35
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Ethernet"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 36
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "LoWPAN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 37
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Usb"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Usb:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 38
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "WiFi"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 39
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "WiFiAware"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 31
    invoke-static {}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->$values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .locals 1

    .line 31
    const-class v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p0
.end method

.method public static values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .locals 1

    .line 31
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    invoke-virtual {v0}, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object v0
.end method
