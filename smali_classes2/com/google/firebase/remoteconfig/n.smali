.class final synthetic Lcom/google/firebase/remoteconfig/n;
.super Ljava/lang/Object;
.source "RemoteConfigRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field private static final a:Lcom/google/firebase/remoteconfig/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/n;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/n;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/n;->a:Lcom/google/firebase/remoteconfig/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/components/ComponentFactory;
    .locals 1

    sget-object v0, Lcom/google/firebase/remoteconfig/n;->a:Lcom/google/firebase/remoteconfig/n;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    move-result-object p1

    return-object p1
.end method
