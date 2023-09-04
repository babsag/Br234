.class public final Lcom/google/android/gms/config/proto/Config$PackageData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Config.java"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$PackageDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$PackageData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$PackageData;",
        "Lcom/google/android/gms/config/proto/Config$PackageData$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$PackageDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVE_CONFIG_AGE_SECONDS_FIELD_NUMBER:I = 0x14

.field public static final ANALYTICS_USER_PROPERTY_FIELD_NUMBER:I = 0x11

.field public static final APP_CERT_HASH_FIELD_NUMBER:I = 0xa

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0xc

.field public static final APP_INSTANCE_ID_TOKEN_FIELD_NUMBER:I = 0xe

.field public static final APP_VERSION_CODE_FIELD_NUMBER:I = 0xb

.field public static final APP_VERSION_FIELD_NUMBER:I = 0xd

.field public static final CERT_HASH_FIELD_NUMBER:I = 0x4

.field public static final CONFIG_ID_FIELD_NUMBER:I = 0x5

.field public static final CUSTOM_VARIABLE_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

.field public static final DIGEST_FIELD_NUMBER:I = 0x3

.field public static final FETCHED_CONFIG_AGE_SECONDS_FIELD_NUMBER:I = 0x13

.field public static final GAMES_PROJECT_ID_FIELD_NUMBER:I = 0x7

.field public static final GMP_PROJECT_ID_FIELD_NUMBER:I = 0x6

.field public static final NAMESPACE_DIGEST_FIELD_NUMBER:I = 0x8

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$PackageData;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUESTED_CACHE_EXPIRATION_SECONDS_FIELD_NUMBER:I = 0x12

.field public static final REQUESTED_HIDDEN_NAMESPACE_FIELD_NUMBER:I = 0xf

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x10

.field public static final VERSION_CODE_FIELD_NUMBER:I = 0x2


# instance fields
.field private activeConfigAgeSeconds_:I

.field private analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation
.end field

.field private appCertHash_:Lcom/google/protobuf/ByteString;

.field private appInstanceIdToken_:Ljava/lang/String;

.field private appInstanceId_:Ljava/lang/String;

.field private appVersionCode_:I

.field private appVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private certHash_:Lcom/google/protobuf/ByteString;

.field private configId_:Ljava/lang/String;

.field private customVariable_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation
.end field

.field private digest_:Lcom/google/protobuf/ByteString;

.field private fetchedConfigAgeSeconds_:I

.field private gamesProjectId_:Ljava/lang/String;

.field private gmpProjectId_:Ljava/lang/String;

.field private namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation
.end field

.field private packageName_:Ljava/lang/String;

.field private requestedCacheExpirationSeconds_:I

.field private requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sdkVersion_:I

.field private versionCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    .line 3
    const-class v1, Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->digest_:Lcom/google/protobuf/ByteString;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->certHash_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->configId_:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->packageName_:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gmpProjectId_:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gamesProjectId_:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appCertHash_:Lcom/google/protobuf/ByteString;

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersion_:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceId_:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceIdToken_:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 15
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setVersionCode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearPackageName()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setPackageNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setGmpProjectId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearGmpProjectId()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setGmpProjectIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setGamesProjectId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearGamesProjectId()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setGamesProjectIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/gms/config/proto/Config$PackageData;ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageData;->setNamespaceDigest(ILcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearVersionCode()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addNamespaceDigest(Lcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/gms/config/proto/Config$PackageData;ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageData;->addNamespaceDigest(ILcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addAllNamespaceDigest(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearNamespaceDigest()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->removeNamespaceDigest(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/gms/config/proto/Config$PackageData;ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageData;->setCustomVariable(ILcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addCustomVariable(Lcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/gms/config/proto/Config$PackageData;ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageData;->addCustomVariable(ILcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addAllCustomVariable(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearCustomVariable()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setDigest(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->removeCustomVariable(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppCertHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearAppCertHash()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppVersionCode(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearAppVersionCode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearAppVersion()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppInstanceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearAppInstanceId()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearDigest()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppInstanceIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppInstanceIdToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearAppInstanceIdToken()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAppInstanceIdTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/android/gms/config/proto/Config$PackageData;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageData;->setRequestedHiddenNamespace(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addRequestedHiddenNamespace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addAllRequestedHiddenNamespace(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearRequestedHiddenNamespace()V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addRequestedHiddenNamespaceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setSdkVersion(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setCertHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearSdkVersion()V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/android/gms/config/proto/Config$PackageData;ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageData;->setAnalyticsUserProperty(ILcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addAnalyticsUserProperty(Lcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/android/gms/config/proto/Config$PackageData;ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$PackageData;->addAnalyticsUserProperty(ILcom/google/android/gms/config/proto/Config$NamedValue;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->addAllAnalyticsUserProperty(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearAnalyticsUserProperty()V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->removeAnalyticsUserProperty(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setRequestedCacheExpirationSeconds(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearRequestedCacheExpirationSeconds()V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setFetchedConfigAgeSeconds(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearCertHash()V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearFetchedConfigAgeSeconds()V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/android/gms/config/proto/Config$PackageData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setActiveConfigAgeSeconds(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearActiveConfigAgeSeconds()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gms/config/proto/Config$PackageData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setConfigId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gms/config/proto/Config$PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->clearConfigId()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gms/config/proto/Config$PackageData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$PackageData;->setConfigIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllAnalyticsUserProperty(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureAnalyticsUserPropertyIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllCustomVariable(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureCustomVariableIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllNamespaceDigest(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureNamespaceDigestIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllRequestedHiddenNamespace(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureRequestedHiddenNamespaceIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAnalyticsUserProperty(ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureAnalyticsUserPropertyIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAnalyticsUserProperty(Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureAnalyticsUserPropertyIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCustomVariable(ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureCustomVariableIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCustomVariable(Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureCustomVariableIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNamespaceDigest(ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureNamespaceDigestIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNamespaceDigest(Lcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureNamespaceDigestIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRequestedHiddenNamespace(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureRequestedHiddenNamespaceIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRequestedHiddenNamespaceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureRequestedHiddenNamespaceIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearActiveConfigAgeSeconds()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->activeConfigAgeSeconds_:I

    return-void
.end method

.method private clearAnalyticsUserProperty()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAppCertHash()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getAppCertHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appCertHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearAppInstanceId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private clearAppInstanceIdToken()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getAppInstanceIdToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceIdToken_:Ljava/lang/String;

    return-void
.end method

.method private clearAppVersion()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearAppVersionCode()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersionCode_:I

    return-void
.end method

.method private clearCertHash()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getCertHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->certHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearConfigId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getConfigId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->configId_:Ljava/lang/String;

    return-void
.end method

.method private clearCustomVariable()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDigest()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDigest()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->digest_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearFetchedConfigAgeSeconds()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->fetchedConfigAgeSeconds_:I

    return-void
.end method

.method private clearGamesProjectId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getGamesProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gamesProjectId_:Ljava/lang/String;

    return-void
.end method

.method private clearGmpProjectId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getGmpProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gmpProjectId_:Ljava/lang/String;

    return-void
.end method

.method private clearNamespaceDigest()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPackageName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$PackageData;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->packageName_:Ljava/lang/String;

    return-void
.end method

.method private clearRequestedCacheExpirationSeconds()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedCacheExpirationSeconds_:I

    return-void
.end method

.method private clearRequestedHiddenNamespace()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->sdkVersion_:I

    return-void
.end method

.method private clearVersionCode()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->versionCode_:I

    return-void
.end method

.method private ensureAnalyticsUserPropertyIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureCustomVariableIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureNamespaceDigestIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureRequestedHiddenNamespaceIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$PackageData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$PackageData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$PackageData;)Lcom/google/android/gms/config/proto/Config$PackageData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$PackageData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$PackageData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAnalyticsUserProperty(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureAnalyticsUserPropertyIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeCustomVariable(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureCustomVariableIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeNamespaceDigest(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureNamespaceDigestIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActiveConfigAgeSeconds(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->activeConfigAgeSeconds_:I

    return-void
.end method

.method private setAnalyticsUserProperty(ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureAnalyticsUserPropertyIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAppCertHash(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appCertHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setAppInstanceId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method private setAppInstanceIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceId_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    return-void
.end method

.method private setAppInstanceIdToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceIdToken_:Ljava/lang/String;

    return-void
.end method

.method private setAppInstanceIdTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceIdToken_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    return-void
.end method

.method private setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersion_:Ljava/lang/String;

    return-void
.end method

.method private setAppVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersion_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    return-void
.end method

.method private setAppVersionCode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersionCode_:I

    return-void
.end method

.method private setCertHash(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->certHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setConfigId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->configId_:Ljava/lang/String;

    return-void
.end method

.method private setConfigIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->configId_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    return-void
.end method

.method private setCustomVariable(ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureCustomVariableIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDigest(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->digest_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setFetchedConfigAgeSeconds(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->fetchedConfigAgeSeconds_:I

    return-void
.end method

.method private setGamesProjectId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gamesProjectId_:Ljava/lang/String;

    return-void
.end method

.method private setGamesProjectIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gamesProjectId_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    return-void
.end method

.method private setGmpProjectId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gmpProjectId_:Ljava/lang/String;

    return-void
.end method

.method private setGmpProjectIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gmpProjectId_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    return-void
.end method

.method private setNamespaceDigest(ILcom/google/android/gms/config/proto/Config$NamedValue;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureNamespaceDigestIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->packageName_:Ljava/lang/String;

    return-void
.end method

.method private setPackageNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->packageName_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    return-void
.end method

.method private setRequestedCacheExpirationSeconds(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedCacheExpirationSeconds_:I

    return-void
.end method

.method private setRequestedHiddenNamespace(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$PackageData;->ensureRequestedHiddenNamespaceIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSdkVersion(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->sdkVersion_:I

    return-void
.end method

.method private setVersionCode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->versionCode_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p2, Lcom/google/android/gms/config/proto/Config$NamedValue;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/config/proto/Config$PackageData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/config/proto/Config$PackageData;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/config/proto/Config$PackageData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/config/proto/Config$PackageData;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    return-object p1

    :pswitch_4
    const/16 p1, 0x18

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "bitField0_"

    aput-object v1, p1, v0

    const-string v0, "packageName_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "versionCode_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "digest_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "certHash_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "configId_"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "gmpProjectId_"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "gamesProjectId_"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    const-string v0, "namespaceDigest_"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const/16 p3, 0xa

    const-string v0, "customVariable_"

    aput-object v0, p1, p3

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const/16 p3, 0xc

    const-string v0, "appCertHash_"

    aput-object v0, p1, p3

    const/16 p3, 0xd

    const-string v0, "appVersionCode_"

    aput-object v0, p1, p3

    const/16 p3, 0xe

    const-string v0, "appInstanceId_"

    aput-object v0, p1, p3

    const/16 p3, 0xf

    const-string v0, "appVersion_"

    aput-object v0, p1, p3

    const/16 p3, 0x10

    const-string v0, "appInstanceIdToken_"

    aput-object v0, p1, p3

    const/16 p3, 0x11

    const-string v0, "requestedHiddenNamespace_"

    aput-object v0, p1, p3

    const/16 p3, 0x12

    const-string v0, "sdkVersion_"

    aput-object v0, p1, p3

    const/16 p3, 0x13

    const-string v0, "analyticsUserProperty_"

    aput-object v0, p1, p3

    const/16 p3, 0x14

    aput-object p2, p1, p3

    const/16 p2, 0x15

    const-string p3, "requestedCacheExpirationSeconds_"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "fetchedConfigAgeSeconds_"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "activeConfigAgeSeconds_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0014\u0000\u0001\u0001\u0014\u0014\u0000\u0004\u0000\u0001\u0008\u0004\u0002\u0004\u0000\u0003\n\u0001\u0004\n\u0002\u0005\u0008\u0003\u0006\u0008\u0005\u0007\u0008\u0006\u0008\u001b\t\u001b\n\n\u0007\u000b\u0004\u0008\u000c\u0008\n\r\u0008\t\u000e\u0008\u000b\u000f\u001a\u0010\u0004\u000c\u0011\u001b\u0012\u0004\r\u0013\u0004\u000e\u0014\u0004\u000f"

    .line 11
    sget-object p3, Lcom/google/android/gms/config/proto/Config$PackageData;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/config/proto/Config$PackageData$Builder;

    invoke-direct {p1, v0}, Lcom/google/android/gms/config/proto/Config$PackageData$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/config/proto/Config$PackageData;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$PackageData;-><init>()V

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

.method public getActiveConfigAgeSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->activeConfigAgeSeconds_:I

    return v0
.end method

.method public getAnalyticsUserProperty(I)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p1
.end method

.method public getAnalyticsUserPropertyCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAnalyticsUserPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAnalyticsUserPropertyOrBuilder(I)Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;

    return-object p1
.end method

.method public getAnalyticsUserPropertyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->analyticsUserProperty_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAppCertHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appCertHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstanceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstanceIdToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceIdToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstanceIdTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appInstanceIdToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->appVersionCode_:I

    return v0
.end method

.method public getCertHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->certHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getConfigId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->configId_:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->configId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustomVariable(I)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p1
.end method

.method public getCustomVariableCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCustomVariableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCustomVariableOrBuilder(I)Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;

    return-object p1
.end method

.method public getCustomVariableOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->customVariable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDigest()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->digest_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFetchedConfigAgeSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->fetchedConfigAgeSeconds_:I

    return v0
.end method

.method public getGamesProjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gamesProjectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGamesProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gamesProjectId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGmpProjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gmpProjectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGmpProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->gmpProjectId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceDigest(I)Lcom/google/android/gms/config/proto/Config$NamedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$NamedValue;

    return-object p1
.end method

.method public getNamespaceDigestCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamespaceDigestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$NamedValue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNamespaceDigestOrBuilder(I)Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;

    return-object p1
.end method

.method public getNamespaceDigestOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$NamedValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->namespaceDigest_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->packageName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedCacheExpirationSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedCacheExpirationSeconds_:I

    return v0
.end method

.method public getRequestedHiddenNamespace(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestedHiddenNamespaceBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestedHiddenNamespaceCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestedHiddenNamespaceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->requestedHiddenNamespace_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->sdkVersion_:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->versionCode_:I

    return v0
.end method

.method public hasActiveConfigAgeSeconds()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppCertHash()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppInstanceId()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppInstanceIdToken()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppVersion()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppVersionCode()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCertHash()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConfigId()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDigest()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFetchedConfigAgeSeconds()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGamesProjectId()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGmpProjectId()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestedCacheExpirationSeconds()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersionCode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$PackageData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
