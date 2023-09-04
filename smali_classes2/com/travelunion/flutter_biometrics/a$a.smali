.class Lcom/travelunion/flutter_biometrics/a$a;
.super Ljava/lang/Object;
.source "AuthenticationHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/travelunion/flutter_biometrics/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/travelunion/flutter_biometrics/a;


# direct methods
.method constructor <init>(Lcom/travelunion/flutter_biometrics/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a$a;->a:Lcom/travelunion/flutter_biometrics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a$a;->a:Lcom/travelunion/flutter_biometrics/a;

    invoke-static {p1}, Lcom/travelunion/flutter_biometrics/a;->a(Lcom/travelunion/flutter_biometrics/a;)Lcom/travelunion/flutter_biometrics/a$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/travelunion/flutter_biometrics/a$c;->a()V

    .line 2
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a$a;->a:Lcom/travelunion/flutter_biometrics/a;

    invoke-static {p1}, Lcom/travelunion/flutter_biometrics/a;->b(Lcom/travelunion/flutter_biometrics/a;)V

    .line 3
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a$a;->a:Lcom/travelunion/flutter_biometrics/a;

    invoke-static {p1}, Lcom/travelunion/flutter_biometrics/a;->c(Lcom/travelunion/flutter_biometrics/a;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.SECURITY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
