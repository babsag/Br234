.class Lcom/ca/mas/core/service/c;
.super Ljava/lang/Object;
.source "MssoRequest.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final b:J

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/ca/mas/core/context/MssoContext;

.field private e:Lcom/ca/mas/foundation/MASRequest;

.field private final f:Landroid/os/ResultReceiver;

.field private g:Landroid/os/Bundle;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/ca/mas/core/service/c;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/foundation/MASRequest;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/ca/mas/core/service/c;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ca/mas/core/service/c;->b:J

    .line 3
    iput-object p1, p0, Lcom/ca/mas/core/service/c;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/ca/mas/core/service/c;->d:Lcom/ca/mas/core/context/MssoContext;

    .line 5
    iput-object p3, p0, Lcom/ca/mas/core/service/c;->e:Lcom/ca/mas/foundation/MASRequest;

    .line 6
    iput-object p4, p0, Lcom/ca/mas/core/service/c;->f:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/c;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ca/mas/core/service/c;->b:J

    return-wide v0
.end method

.method public d()Lcom/ca/mas/core/context/MssoContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/c;->d:Lcom/ca/mas/core/context/MssoContext;

    return-object v0
.end method

.method public e()Lcom/ca/mas/foundation/MASRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/c;->e:Lcom/ca/mas/foundation/MASRequest;

    return-object v0
.end method

.method public f()Landroid/os/ResultReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/c;->f:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/service/c;->h:Z

    return v0
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/service/c;->g:Landroid/os/Bundle;

    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/service/c;->h:Z

    return-void
.end method
