.class final synthetic Lcom/google/firebase/installations/g;
.super Ljava/lang/Object;
.source "FirebaseInstallationsRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field private static final a:Lcom/google/firebase/installations/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/installations/g;

    invoke-direct {v0}, Lcom/google/firebase/installations/g;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/g;->a:Lcom/google/firebase/installations/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/components/ComponentFactory;
    .locals 1

    sget-object v0, Lcom/google/firebase/installations/g;->a:Lcom/google/firebase/installations/g;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/installations/FirebaseInstallationsApi;

    move-result-object p1

    return-object p1
.end method
