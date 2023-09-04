.class Lcom/travelunion/flutter_biometrics/a$b;
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
    iput-object p1, p0, Lcom/travelunion/flutter_biometrics/a$b;->a:Lcom/travelunion/flutter_biometrics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
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
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a$b;->a:Lcom/travelunion/flutter_biometrics/a;

    invoke-static {p1}, Lcom/travelunion/flutter_biometrics/a;->a(Lcom/travelunion/flutter_biometrics/a;)Lcom/travelunion/flutter_biometrics/a$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/travelunion/flutter_biometrics/a$c;->a()V

    .line 2
    iget-object p1, p0, Lcom/travelunion/flutter_biometrics/a$b;->a:Lcom/travelunion/flutter_biometrics/a;

    invoke-static {p1}, Lcom/travelunion/flutter_biometrics/a;->b(Lcom/travelunion/flutter_biometrics/a;)V

    return-void
.end method
