.class Lcaf/io/Q$a;
.super Ljava/lang/Object;
.source "SecurityProvider.java"

# interfaces
.implements Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaf/io/Q;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcaf/io/Q;


# direct methods
.method constructor <init>(Lcaf/io/Q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/Q$a;->a:Lcaf/io/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderInstallFailed(ILandroid/content/Intent;)V
    .locals 3
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcaf/io/t;->v:Lcaf/io/t;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/ProviderInstallerFailedEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/ProviderInstallerFailedEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {p1, v0, v1}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 3
    iget-object p1, p0, Lcaf/io/Q$a;->a:Lcaf/io/Q;

    invoke-static {p1}, Lcaf/io/Q;->a(Lcaf/io/Q;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object p1

    new-instance p2, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;

    iget-object v1, p0, Lcaf/io/Q$a;->a:Lcaf/io/Q;

    invoke-static {v1}, Lcaf/io/Q;->a(Lcaf/io/Q;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object v1

    sget v2, Lcom/combateafraude/passivefaceliveness/R$string;->google_security_provider_error_caf:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, v0}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public onProviderInstalled()V
    .locals 0

    return-void
.end method
