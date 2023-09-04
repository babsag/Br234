.class Lcaf/io/l1;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessController.java"

# interfaces
.implements Lcaf/io/h$f;


# instance fields
.field final synthetic a:Lcaf/io/L;


# direct methods
.method constructor <init>(Lcaf/io/L;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/l1;->a:Lcaf/io/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcaf/io/k;)V
    .locals 1
    .param p1    # Lcaf/io/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcaf/io/l1;->a:Lcaf/io/L;

    invoke-static {v0, p1}, Lcaf/io/L;->u(Lcaf/io/L;Lcaf/io/k;)V

    .line 2
    iget-object p1, p0, Lcaf/io/l1;->a:Lcaf/io/L;

    sget-object v0, Lcaf/io/L$b;->f:Lcaf/io/L$b;

    invoke-static {p1, v0}, Lcaf/io/L;->a(Lcaf/io/L;Lcaf/io/L$b;)Lcaf/io/L$b;

    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 3
    sget-object v0, Lcaf/io/t;->h:Lcaf/io/t;

    const/4 v1, 0x0

    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p1, p2, p3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v2, p1, p2, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFailedEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    sget-object p1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {p1, v0, v2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 5
    iget-object p1, p0, Lcaf/io/l1;->a:Lcaf/io/L;

    invoke-static {p1}, Lcaf/io/L;->b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object p1

    new-instance p2, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance p3, Lcom/combateafraude/passivefaceliveness/output/failure/StorageReason;

    iget-object v0, p0, Lcaf/io/l1;->a:Lcaf/io/L;

    invoke-static {v0}, Lcaf/io/L;->b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object v0

    sget v2, Lcom/combateafraude/passivefaceliveness/R$string;->low_storage_photo_caf:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/combateafraude/passivefaceliveness/output/failure/StorageReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    invoke-virtual {p1, p2, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method
