.class public final Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Config.java"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$ConfigFetchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigFetchRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANDROID_ID_FIELD_NUMBER:I = 0x1

.field public static final API_LEVEL_FIELD_NUMBER:I = 0x8

.field public static final CLIENT_VERSION_FIELD_NUMBER:I = 0x6

.field public static final CONFIG_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

.field public static final DEVICE_COUNTRY_FIELD_NUMBER:I = 0x9

.field public static final DEVICE_DATA_VERSION_INFO_FIELD_NUMBER:I = 0x3

.field public static final DEVICE_LOCALE_FIELD_NUMBER:I = 0xa

.field public static final DEVICE_SUBTYPE_FIELD_NUMBER:I = 0xc

.field public static final DEVICE_TIMEZONE_ID_FIELD_NUMBER:I = 0xe

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0xb

.field public static final GMS_CORE_VERSION_FIELD_NUMBER:I = 0x7

.field public static final OS_VERSION_FIELD_NUMBER:I = 0xd

.field public static final PACKAGE_DATA_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_TOKEN_FIELD_NUMBER:I = 0x4


# instance fields
.field private androidId_:J

.field private apiLevel_:I

.field private bitField0_:I

.field private clientVersion_:I

.field private config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

.field private deviceCountry_:Ljava/lang/String;

.field private deviceDataVersionInfo_:Ljava/lang/String;

.field private deviceLocale_:Ljava/lang/String;

.field private deviceSubtype_:I

.field private deviceTimezoneId_:Ljava/lang/String;

.field private deviceType_:I

.field private gmsCoreVersion_:I

.field private osVersion_:Ljava/lang/String;

.field private packageData_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$PackageData;",
            ">;"
        }
    .end annotation
.end field

.field private securityToken_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    .line 3
    const-class v1, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceDataVersionInfo_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceCountry_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceLocale_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->osVersion_:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceTimezoneId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10000(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setApiLevel(I)V

    return-void
.end method

.method static synthetic access$10100(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearApiLevel()V

    return-void
.end method

.method static synthetic access$10200(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceCountry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearDeviceCountry()V

    return-void
.end method

.method static synthetic access$10400(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceCountryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceLocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearDeviceLocale()V

    return-void
.end method

.method static synthetic access$10700(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceLocaleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceType(I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearDeviceType()V

    return-void
.end method

.method static synthetic access$11000(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceSubtype(I)V

    return-void
.end method

.method static synthetic access$11100(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearDeviceSubtype()V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setOsVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearOsVersion()V

    return-void
.end method

.method static synthetic access$11400(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setOsVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceTimezoneId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearDeviceTimezoneId()V

    return-void
.end method

.method static synthetic access$11700(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceTimezoneIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setConfig(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->mergeConfig(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearConfig()V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setAndroidId(J)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearAndroidId()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;ILcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setPackageData(ILcom/google/android/gms/config/proto/Config$PackageData;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->addPackageData(Lcom/google/android/gms/config/proto/Config$PackageData;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;ILcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->addPackageData(ILcom/google/android/gms/config/proto/Config$PackageData;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->addAllPackageData(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearPackageData()V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->removePackageData(I)V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceDataVersionInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearDeviceDataVersionInfo()V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setDeviceDataVersionInfoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setSecurityToken(J)V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearSecurityToken()V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setClientVersion(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearClientVersion()V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->setGmsCoreVersion(I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clearGmsCoreVersion()V

    return-void
.end method

.method private addAllPackageData(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$PackageData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->ensurePackageDataIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPackageData(ILcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->ensurePackageDataIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPackageData(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->ensurePackageDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAndroidId()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->androidId_:J

    return-void
.end method

.method private clearApiLevel()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->apiLevel_:I

    return-void
.end method

.method private clearClientVersion()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clientVersion_:I

    return-void
.end method

.method private clearConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method private clearDeviceCountry()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDeviceCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceCountry_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceDataVersionInfo()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDeviceDataVersionInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceDataVersionInfo_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceLocale()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDeviceLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceLocale_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceSubtype()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceSubtype_:I

    return-void
.end method

.method private clearDeviceTimezoneId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDeviceTimezoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceTimezoneId_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceType()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceType_:I

    return-void
.end method

.method private clearGmsCoreVersion()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->gmsCoreVersion_:I

    return-void
.end method

.method private clearOsVersion()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearPackageData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSecurityToken()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->securityToken_:J

    return-void
.end method

.method private ensurePackageDataIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object v0
.end method

.method private mergeConfig(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->getDefaultInstance()Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->newBuilder(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePackageData(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->ensurePackageDataIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAndroidId(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->androidId_:J

    return-void
.end method

.method private setApiLevel(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->apiLevel_:I

    return-void
.end method

.method private setClientVersion(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clientVersion_:I

    return-void
.end method

.method private setConfig(Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    .line 3
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method private setDeviceCountry(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceCountry_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceCountryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceCountry_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method private setDeviceDataVersionInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceDataVersionInfo_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceDataVersionInfoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceDataVersionInfo_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method private setDeviceLocale(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceLocale_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceLocaleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceLocale_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method private setDeviceSubtype(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceSubtype_:I

    return-void
.end method

.method private setDeviceTimezoneId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceTimezoneId_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceTimezoneIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceTimezoneId_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method private setDeviceType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceType_:I

    return-void
.end method

.method private setGmsCoreVersion(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->gmsCoreVersion_:I

    return-void
.end method

.method private setOsVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOsVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->osVersion_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    return-void
.end method

.method private setPackageData(ILcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->ensurePackageDataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSecurityToken(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->securityToken_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/config/proto/Config$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "androidId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "packageData_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/google/android/gms/config/proto/Config$PackageData;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "deviceDataVersionInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "securityToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "config_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "clientVersion_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "gmsCoreVersion_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "apiLevel_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "deviceCountry_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "deviceLocale_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "deviceType_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "deviceSubtype_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "osVersion_"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "deviceTimezoneId_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0001\u0000\u0001\u0005\u0001\u0002\u001b\u0003\u0008\u0002\u0004\u0005\u0003\u0005\t\u0000\u0006\u0004\u0004\u0007\u0004\u0005\u0008\u0004\u0006\t\u0008\u0007\n\u0008\u0008\u000b\u0004\t\u000c\u0004\n\r\u0008\u000b\u000e\u0008\u000c"

    .line 12
    sget-object p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;

    invoke-direct {p1, p3}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAndroidId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->androidId_:J

    return-wide v0
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->apiLevel_:I

    return v0
.end method

.method public getClientVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->clientVersion_:I

    return v0
.end method

.method public getConfig()Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->config_:Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;->getDefaultInstance()Lcom/google/android/gms/config/proto/Logs$AndroidConfigFetchProto;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeviceCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCountryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceCountry_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDataVersionInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceDataVersionInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDataVersionInfoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceDataVersionInfo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceLocale_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSubtype()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceSubtype_:I

    return v0
.end method

.method public getDeviceTimezoneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceTimezoneId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTimezoneIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceTimezoneId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->deviceType_:I

    return v0
.end method

.method public getGmsCoreVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->gmsCoreVersion_:I

    return v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->osVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->osVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPackageData(I)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p1
.end method

.method public getPackageDataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPackageDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$PackageData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPackageDataOrBuilder(I)Lcom/google/android/gms/config/proto/Config$PackageDataOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$PackageDataOrBuilder;

    return-object p1
.end method

.method public getPackageDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$PackageDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->packageData_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSecurityToken()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->securityToken_:J

    return-wide v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasApiLevel()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClientVersion()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConfig()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDeviceCountry()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceDataVersionInfo()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceLocale()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceSubtype()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceTimezoneId()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceType()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGmsCoreVersion()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOsVersion()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSecurityToken()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
