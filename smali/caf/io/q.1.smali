.class public final Lcaf/io/q;
.super Ljava/lang/Object;
.source "DeviceMemory.kt"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(Ljava/lang/Runtime;)V
    .locals 8
    .param p1    # Ljava/lang/Runtime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "runtime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 5
    div-long/2addr v4, v2

    iput-wide v4, p0, Lcaf/io/q;->a:J

    sub-long/2addr v0, v4

    .line 6
    iput-wide v0, p0, Lcaf/io/q;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcaf/io/q;->b:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcaf/io/q;->a:J

    return-wide v0
.end method
