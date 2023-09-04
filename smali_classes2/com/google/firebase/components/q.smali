.class final synthetic Lcom/google/firebase/components/q;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# static fields
.field private static final a:Lcom/google/firebase/components/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/q;

    invoke-direct {v0}, Lcom/google/firebase/components/q;-><init>()V

    sput-object v0, Lcom/google/firebase/components/q;->a:Lcom/google/firebase/components/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .locals 1

    sget-object v0, Lcom/google/firebase/components/q;->a:Lcom/google/firebase/components/q;

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/components/t;->b(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
