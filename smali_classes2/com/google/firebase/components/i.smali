.class final synthetic Lcom/google/firebase/components/i;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/components/o;

.field private final b:Lcom/google/firebase/inject/Provider;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/o;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/i;->a:Lcom/google/firebase/components/o;

    iput-object p2, p0, Lcom/google/firebase/components/i;->b:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method public static a(Lcom/google/firebase/components/o;Lcom/google/firebase/inject/Provider;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/i;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/i;-><init>(Lcom/google/firebase/components/o;Lcom/google/firebase/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/i;->a:Lcom/google/firebase/components/o;

    iget-object v1, p0, Lcom/google/firebase/components/i;->b:Lcom/google/firebase/inject/Provider;

    invoke-static {v0, v1}, Lcom/google/firebase/components/ComponentRuntime;->f(Lcom/google/firebase/components/o;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
