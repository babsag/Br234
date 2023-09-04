.class public final Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Config.java"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$ConfigFetchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigFetchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;,
        Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_CONFIG_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

.field public static final INTERNAL_METADATA_FIELD_NUMBER:I = 0x3

.field public static final PACKAGE_TABLE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private appConfig_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private packageTable_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    .line 3
    const-class v1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

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

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$16400()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V

    return-void
.end method

.method static synthetic access$16600(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$PackageTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addPackageTable(Lcom/google/android/gms/config/proto/Config$PackageTable;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V

    return-void
.end method

.method static synthetic access$16800(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAllPackageTable(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$16900(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearPackageTable()V

    return-void
.end method

.method static synthetic access$17000(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->removePackageTable(I)V

    return-void
.end method

.method static synthetic access$17100(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setStatus(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;)V

    return-void
.end method

.method static synthetic access$17200(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearStatus()V

    return-void
.end method

.method static synthetic access$17300(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addInternalMetadata(Lcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$17500(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$17600(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAllInternalMetadata(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearInternalMetadata()V

    return-void
.end method

.method static synthetic access$17800(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->removeInternalMetadata(I)V

    return-void
.end method

.method static synthetic access$17900(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->setAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAppConfig(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V

    return-void
.end method

.method static synthetic access$18100(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->addAllAppConfig(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$18300(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->clearAppConfig()V

    return-void
.end method

.method static synthetic access$18400(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->removeAppConfig(I)V

    return-void
.end method

.method private addAllAppConfig(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllInternalMetadata(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllPackageTable(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAppConfig(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInternalMetadata(Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPackageTable(Lcom/google/android/gms/config/proto/Config$PackageTable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAppConfig()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInternalMetadata()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPackageTable()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearStatus()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    return-void
.end method

.method private ensureAppConfigIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInternalMetadataIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensurePackageTableIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAppConfig(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeInternalMetadata(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removePackageTable(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAppConfig(ILcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureAppConfigIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInternalMetadata(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensureInternalMetadataIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPackageTable(ILcom/google/android/gms/config/proto/Config$PackageTable;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->ensurePackageTableIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setStatus(Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

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
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "packageTable_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/google/android/gms/config/proto/Config$PackageTable;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "status_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 12
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "internalMetadata_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/gms/config/proto/Config$KeyValue;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "appConfig_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0003\u0000\u0001\u001b\u0002\u000c\u0000\u0003\u001b\u0004\u001b"

    .line 13
    sget-object p3, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;

    invoke-direct {p1, p3}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$a;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;-><init>()V

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

.method public getAppConfig(I)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p1
.end method

.method public getAppConfigCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAppConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAppConfigOrBuilder(I)Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;

    return-object p1
.end method

.method public getAppConfigOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->appConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInternalMetadata(I)Lcom/google/android/gms/config/proto/Config$KeyValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    return-object p1
.end method

.method public getInternalMetadataCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInternalMetadataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInternalMetadataOrBuilder(I)Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;

    return-object p1
.end method

.method public getInternalMetadataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->internalMetadata_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPackageTable(I)Lcom/google/android/gms/config/proto/Config$PackageTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$PackageTable;

    return-object p1
.end method

.method public getPackageTableCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPackageTableList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$PackageTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPackageTableOrBuilder(I)Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;

    return-object p1
.end method

.method public getPackageTableOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$PackageTableOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->packageTable_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->status_:I

    invoke-static {v0}, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->forNumber(I)Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;->SUCCESS:Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse$ResponseStatus;

    :cond_0
    return-object v0
.end method

.method public hasStatus()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$ConfigFetchResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
