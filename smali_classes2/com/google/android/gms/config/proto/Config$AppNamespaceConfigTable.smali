.class public final Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Config.java"

# interfaces
.implements Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTableOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/config/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppNamespaceConfigTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;,
        Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;",
        "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;",
        ">;",
        "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTableOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

.field public static final DIGEST_FIELD_NUMBER:I = 0x2

.field public static final ENTRY_FIELD_NUMBER:I = 0x3

.field public static final NAMESPACE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private digest_:Ljava/lang/String;

.field private entry_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/android/gms/config/proto/Config$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private namespace_:Ljava/lang/String;

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-direct {v0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    .line 3
    const-class v1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->namespace_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->digest_:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$13300()Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->setNamespace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->clearNamespace()V

    return-void
.end method

.method static synthetic access$13600(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->setNamespaceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->setDigest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->clearDigest()V

    return-void
.end method

.method static synthetic access$13900(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->setDigestBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->setEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->addEntry(Lcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$14200(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->addEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->addAllEntry(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->clearEntry()V

    return-void
.end method

.method static synthetic access$14500(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->removeEntry(I)V

    return-void
.end method

.method static synthetic access$14600(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->setStatus(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;)V

    return-void
.end method

.method static synthetic access$14700(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->clearStatus()V

    return-void
.end method

.method private addAllEntry(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->ensureEntryIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->ensureEntryIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEntry(Lcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->ensureEntryIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDigest()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->getDigest()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->digest_:Ljava/lang/String;

    return-void
.end method

.method private clearEntry()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearNamespace()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->getDefaultInstance()Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->namespace_:Ljava/lang/String;

    return-void
.end method

.method private clearStatus()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->status_:I

    return-void
.end method

.method private ensureEntryIsMutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeEntry(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->ensureEntryIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDigest(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->digest_:Ljava/lang/String;

    return-void
.end method

.method private setDigestBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->digest_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    return-void
.end method

.method private setEntry(ILcom/google/android/gms/config/proto/Config$KeyValue;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->ensureEntryIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNamespace(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->namespace_:Ljava/lang/String;

    return-void
.end method

.method private setNamespaceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->namespace_:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    return-void
.end method

.method private setStatus(Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->status_:I

    .line 2
    iget p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

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
    sget-object p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "namespace_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "digest_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "entry_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    const-class p3, Lcom/google/android/gms/config/proto/Config$KeyValue;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "status_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 12
    invoke-static {}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u001b\u0004\u000c\u0002"

    .line 13
    sget-object p3, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->DEFAULT_INSTANCE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;

    invoke-direct {p1, p3}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$Builder;-><init>(Lcom/google/android/gms/config/proto/Config$a;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;

    invoke-direct {p1}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;-><init>()V

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

.method public getDigest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->digest_:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->digest_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/google/android/gms/config/proto/Config$KeyValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValue;

    return-object p1
.end method

.method public getEntryCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEntryOrBuilder(I)Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/config/proto/Config$KeyValueOrBuilder;

    return-object p1
.end method

.method public getEntryOrBuilderList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->entry_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->namespace_:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->namespace_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->status_:I

    invoke-static {v0}, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;->forNumber(I)Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;->UPDATE:Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable$NamespaceStatus;

    :cond_0
    return-object v0
.end method

.method public hasDigest()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNamespace()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStatus()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/config/proto/Config$AppNamespaceConfigTable;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
