.class public final Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigPersistence.java"

# interfaces
.implements Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/proto/ConfigPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;",
        ">;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ResourceOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_UPDATE_TIME_FIELD_NUMBER:I = 0x2

.field public static final NAMESPACE_FIELD_NUMBER:I = 0x3

.field public static final RESOURCE_ID_FIELD_NUMBER:I = 0x1

.field private static final a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

.field private static volatile b:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    .line 3
    const-class v1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object v0
.end method

.method static synthetic b(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->l(I)V

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->j()V

    return-void
.end method

.method private clearNamespace()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    .line 2
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->k(J)V

    return-void
.end method

.method static synthetic e(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->i()V

    return-void
.end method

.method static synthetic f(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->setNamespace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->clearNamespace()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->setNamespaceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->e:J

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->d:I

    return-void
.end method

.method private k(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    .line 2
    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->e:J

    return-void
.end method

.method private l(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    .line 2
    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->d:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNamespace(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->f:Ljava/lang/String;

    return-void
.end method

.method private setNamespaceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->f:Ljava/lang/String;

    .line 2
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$a;->a:[I

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
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->b:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->b:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->b:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "resourceId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "appUpdateTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "namespace_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0005\u0001\u0003\u0008\u0002"

    .line 11
    sget-object p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource$Builder;-><init>(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    invoke-direct {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;-><init>()V

    return-object p1

    nop

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

.method public getAppUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->e:J

    return-wide v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->d:I

    return v0
.end method

.method public hasAppUpdateTime()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResourceId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
