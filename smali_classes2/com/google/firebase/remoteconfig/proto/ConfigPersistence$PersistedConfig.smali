.class public final Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigPersistence.java"

# interfaces
.implements Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/proto/ConfigPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersistedConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;",
        ">;",
        "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfigOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVE_CONFIG_HOLDER_FIELD_NUMBER:I = 0x2

.field public static final APPLIED_RESOURCE_FIELD_NUMBER:I = 0x5

.field public static final DEFAULTS_CONFIG_HOLDER_FIELD_NUMBER:I = 0x3

.field public static final FETCHED_CONFIG_HOLDER_FIELD_NUMBER:I = 0x1

.field public static final METADATA_FIELD_NUMBER:I = 0x4

.field private static final a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

.field private static volatile b:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

.field private e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

.field private f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

.field private g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

.field private h:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    .line 3
    const-class v1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

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

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private A()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    .line 2
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private C(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private D(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private E(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private F(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private G(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->B()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private H(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 3
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private I(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->B()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private J(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 3
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private K(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 3
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private L(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    .line 3
    iget p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method static synthetic a()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object v0
.end method

.method static synthetic b(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->K(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->L(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V

    return-void
.end method

.method static synthetic d(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->F(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;)V

    return-void
.end method

.method static synthetic e(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->A()V

    return-void
.end method

.method static synthetic f(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->I(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->v(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object v0
.end method

.method static synthetic h(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->u(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->t(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->x()V

    return-void
.end method

.method static synthetic k(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->G(I)V

    return-void
.end method

.method static synthetic l(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->E(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V

    return-void
.end method

.method static synthetic m(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->z()V

    return-void
.end method

.method static synthetic n(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->H(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;

    return-object p0
.end method

.method static synthetic o(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->C(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V

    return-void
.end method

.method static synthetic p(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->w()V

    return-void
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->J(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V

    return-void
.end method

.method static synthetic r(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->D(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;)V

    return-void
.end method

.method static synthetic s(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->y()V

    return-void
.end method

.method private t(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->B()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private u(ILcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->B()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private v(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->B()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private w()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 2
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private y()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 2
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    return-void
.end method

.method private z()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    .line 2
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

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
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->b:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->b:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->b:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "fetchedConfigHolder_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "activeConfigHolder_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "defaultsConfigHolder_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "metadata_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "appliedResource_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 11
    const-class p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u001b"

    .line 12
    sget-object p3, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->a:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig$Builder;-><init>(Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;

    invoke-direct {p1}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;-><init>()V

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

.method public getActiveConfigHolder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->e:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAppliedResource(I)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;

    return-object p1
.end method

.method public getAppliedResourceCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAppliedResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Resource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAppliedResourceOrBuilder(I)Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ResourceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ResourceOrBuilder;

    return-object p1
.end method

.method public getAppliedResourceOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ResourceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->h:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDefaultsConfigHolder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->f:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFetchedConfigHolder()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->d:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$ConfigHolder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadata()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->g:Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;->getDefaultInstance()Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasActiveConfigHolder()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDefaultsConfigHolder()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFetchedConfigHolder()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMetadata()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/proto/ConfigPersistence$PersistedConfig;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
