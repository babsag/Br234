.class public final Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;
.super Ljava/lang/Object;
.source "DeviceMemory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;",
        "",
        "runtime",
        "Ljava/lang/Runtime;",
        "(Ljava/lang/Runtime;)V",
        "freeMemory",
        "",
        "getFreeMemory",
        "()J",
        "totalMemory",
        "getTotalMemory",
        "usedMemoryInMB",
        "getUsedMemoryInMB",
        "FaceAuthenticator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/lang/Runtime;)V
    .locals 4
    .param p1    # Ljava/lang/Runtime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "runtime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->a:J

    .line 3
    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    .line 4
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->c:J

    return-void
.end method


# virtual methods
.method public final getFreeMemory()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->b:J

    return-wide v0
.end method

.method public final getTotalMemory()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->a:J

    return-wide v0
.end method

.method public final getUsedMemoryInMB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->c:J

    return-wide v0
.end method
