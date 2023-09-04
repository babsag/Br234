.class public final Lcom/google/android/gms/config/proto/Config$AppConfigTable;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Config.java"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppConfigTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
        "Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$AppConfigTableOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_NAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

.field public static final EXPERIMENT_PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final NAMESPACE_CONFIG_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName_:Ljava/lang/String;

.field private bitField0_:I

.field private experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    .line 3
    const-class v1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->appName_:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$14900()Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/google/android/gms/config/proto/Config$AppConfigTable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->setAppName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15100(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->clearAppName()V

    return-void
.end method

.method static synthetic access$15200(Lcom/google/android/gms/config/proto/Config$AppConfigTable;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->setAppNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/google/android/gms/config/proto/Config$AppConfigTable;ILcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->setNamespaceConfig(ILcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V

    return-void
.end method

.method static synthetic access$15400(Lcom/google/android/gms/config/proto/Config$AppConfigTable;Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->addNamespaceConfig(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/google/android/gms/config/proto/Config$AppConfigTable;ILcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->addNamespaceConfig(ILcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/google/android/gms/config/proto/Config$AppConfigTable;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->addAllNamespaceConfig(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->clearNamespaceConfig()V

    return-void
.end method

.method static synthetic access$15800(Lcom/google/android/gms/config/proto/Config$AppConfigTable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->removeNamespaceConfig(I)V

    return-void
.end method

.method static synthetic access$15900(Lcom/google/android/gms/config/proto/Config$AppConfigTable;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->setExperimentPayload(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16000(Lcom/google/android/gms/config/proto/Config$AppConfigTable;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->addExperimentPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/android/gms/config/proto/Config$AppConfigTable;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->addAllExperimentPayload(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->clearExperimentPayload()V

    return-void
.end method

.method private addAllExperimentPayload(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureExperimentPayloadIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllNamespaceConfig(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureNamespaceConfigIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addExperimentPayload(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureExperimentPayloadIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNamespaceConfig(ILcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureNamespaceConfigIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNamespaceConfig(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureNamespaceConfigIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAppName()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->appName_:Ljava/lang/String;

    return-void
.end method

.method private clearExperimentPayload()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearNamespaceConfig()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureExperimentPayloadIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureNamespaceConfigIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$AppConfigTable;)Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$AppConfigTable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeNamespaceConfig(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureNamespaceConfigIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAppName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->appName_:Ljava/lang/String;

    return-void
.end method

.method private setAppNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->appName_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->bitField0_:I

    return-void
.end method

.method private setExperimentPayload(ILcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureExperimentPayloadIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNamespaceConfig(ILcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->ensureNamespaceConfigIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "appName_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "namespaceConfig_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "experimentPayload_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u0008\u0000\u0002\u001b\u0003\u001c"

    .line 12
    sget-object p3, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;

    invoke-direct {p1, p3}, Lcom/google/android/gms/config/proto/Config$AppConfigTable$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/config/proto/Config$AppConfigTable;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$AppConfigTable;-><init>()V

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

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->appName_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->appName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentPayload(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getExperimentPayloadCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentPayloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->experimentPayload_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNamespaceConfig(I)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p1
.end method

.method public getNamespaceConfigCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamespaceConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNamespaceConfigOrBuilder(I)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTableOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTableOrBuilder;

    return-object p1
.end method

.method public getNamespaceConfigOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTableOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->namespaceConfig_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasAppName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppConfigTable;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
