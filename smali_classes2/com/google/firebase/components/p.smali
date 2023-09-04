.class final synthetic Lcom/google/firebase/components/p;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field private final a:Lcom/google/firebase/inject/Deferred$DeferredHandler;

.field private final b:Lcom/google/firebase/inject/Deferred$DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/p;->a:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iput-object p2, p0, Lcom/google/firebase/components/p;->b:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    return-void
.end method

.method public static a(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/p;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/p;-><init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/p;->a:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iget-object v1, p0, Lcom/google/firebase/components/p;->b:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/components/t;->d(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
