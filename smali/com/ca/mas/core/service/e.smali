.class Lcom/ca/mas/core/service/e;
.super Ljava/lang/Object;
.source "MssoResponse.java"


# instance fields
.field private final a:Lcom/ca/mas/core/service/c;

.field private final b:Lcom/ca/mas/foundation/MASResponse;

.field private final c:J


# direct methods
.method constructor <init>(Lcom/ca/mas/core/service/c;Lcom/ca/mas/foundation/MASResponse;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ca/mas/core/service/e;->c:J

    .line 3
    iput-object p1, p0, Lcom/ca/mas/core/service/e;->a:Lcom/ca/mas/core/service/c;

    .line 4
    iput-object p2, p0, Lcom/ca/mas/core/service/e;->b:Lcom/ca/mas/foundation/MASResponse;

    return-void
.end method


# virtual methods
.method public a()Lcom/ca/mas/foundation/MASResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/e;->b:Lcom/ca/mas/foundation/MASResponse;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/e;->a:Lcom/ca/mas/core/service/c;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lcom/ca/mas/core/service/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/e;->a:Lcom/ca/mas/core/service/c;

    return-object v0
.end method
