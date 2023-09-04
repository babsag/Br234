.class public Lcom/ca/mas/core/oauth/CodeVerifierCache;
.super Ljava/lang/Object;
.source "CodeVerifierCache.java"


# static fields
.field private static a:Lcom/ca/mas/core/oauth/CodeVerifierCache;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/core/oauth/CodeVerifierCache;

    invoke-direct {v0}, Lcom/ca/mas/core/oauth/CodeVerifierCache;-><init>()V

    sput-object v0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->a:Lcom/ca/mas/core/oauth/CodeVerifierCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ca/mas/core/oauth/CodeVerifierCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->a:Lcom/ca/mas/core/oauth/CodeVerifierCache;

    return-object v0
.end method


# virtual methods
.method public store(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->b:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->c:Ljava/lang/String;

    return-void
.end method

.method public take()Ljava/lang/String;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->b:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->c:Ljava/lang/String;

    return-object v0
.end method

.method public take(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OAuth State Mismatch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->b:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/ca/mas/core/oauth/CodeVerifierCache;->c:Ljava/lang/String;

    return-object p1
.end method
