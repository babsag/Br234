.class Lcaf/io/k1;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessController.java"

# interfaces
.implements Lcaf/io/h$e;


# instance fields
.field final synthetic a:Lcaf/io/L;


# direct methods
.method constructor <init>(Lcaf/io/L;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/k1;->a:Lcaf/io/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/camera/core/ImageCaptureException;)V
    .locals 5
    .param p1    # Landroidx/camera/core/ImageCaptureException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lcaf/io/t;->h:Lcaf/io/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;

    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4
    :goto_0
    sget-object p1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {p1, v0, v2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 5
    iget-object p1, p0, Lcaf/io/k1;->a:Lcaf/io/L;

    invoke-static {p1}, Lcaf/io/L;->b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object p1

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v2, Lcom/combateafraude/passivefaceliveness/output/failure/StorageReason;

    iget-object v3, p0, Lcaf/io/k1;->a:Lcaf/io/L;

    invoke-static {v3}, Lcaf/io/L;->b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object v3

    sget v4, Lcom/combateafraude/passivefaceliveness/R$string;->low_storage_photo_caf:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/combateafraude/passivefaceliveness/output/failure/StorageReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public a(Lcaf/io/k;)V
    .locals 2
    .param p1    # Lcaf/io/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcaf/io/k1;->a:Lcaf/io/L;

    sget-object v1, Lcaf/io/L$b;->f:Lcaf/io/L$b;

    invoke-static {v0, v1}, Lcaf/io/L;->a(Lcaf/io/L;Lcaf/io/L$b;)Lcaf/io/L$b;

    .line 2
    iget-object v0, p0, Lcaf/io/k1;->a:Lcaf/io/L;

    invoke-static {v0, p1}, Lcaf/io/L;->h(Lcaf/io/L;Lcaf/io/k;)V

    return-void
.end method
