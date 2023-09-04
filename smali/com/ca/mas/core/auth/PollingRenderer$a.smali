.class Lcom/ca/mas/core/auth/PollingRenderer$a;
.super Ljava/util/TimerTask;
.source "PollingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/auth/PollingRenderer;->poll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:J

.field final synthetic c:Lcom/ca/mas/core/auth/PollingRenderer;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/auth/PollingRenderer;[IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->c:Lcom/ca/mas/core/auth/PollingRenderer;

    iput-object p2, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->a:[I

    iput-wide p3, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->b:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Polling Authorization code from Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    int-to-long v0, v2

    iget-wide v2, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->c:Lcom/ca/mas/core/auth/PollingRenderer;

    invoke-virtual {v0}, Lcom/ca/mas/core/auth/AuthRenderer;->proceed()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->c:Lcom/ca/mas/core/auth/PollingRenderer;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "Session expired"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ca/mas/core/auth/AuthRenderer;->onError(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5
    iget-object v0, p0, Lcom/ca/mas/core/auth/PollingRenderer$a;->c:Lcom/ca/mas/core/auth/PollingRenderer;

    invoke-virtual {v0}, Lcom/ca/mas/core/auth/PollingRenderer;->close()V

    :goto_0
    return-void
.end method
