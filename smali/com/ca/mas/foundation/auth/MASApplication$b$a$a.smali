.class Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;
.super Ljava/lang/Object;
.source "MASApplication.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASApplication$b$a;->renderEnterpriseIcon(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/auth/MASApplication;

.field final synthetic b:Lcom/ca/mas/foundation/auth/MASApplication$b$a;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/auth/MASApplication$b$a;Lcom/ca/mas/foundation/auth/MASApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->b:Lcom/ca/mas/foundation/auth/MASApplication$b$a;

    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->a:Lcom/ca/mas/foundation/auth/MASApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->b:Lcom/ca/mas/foundation/auth/MASApplication$b$a;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->getNativeUri()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->b:Lcom/ca/mas/foundation/auth/MASApplication$b$a;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->getNativeUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    invoke-static {}, Lcom/ca/mas/foundation/auth/MASApplication;->a()Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/auth/MASApplication;->a()Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->a:Lcom/ca/mas/foundation/auth/MASApplication;

    invoke-virtual {p1, v0}, Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;->onNativeAppLaunch(Lcom/ca/mas/foundation/auth/MASApplication;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->b:Lcom/ca/mas/foundation/auth/MASApplication$b$a;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->getAuthUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->b:Lcom/ca/mas/foundation/auth/MASApplication$b$a;

    invoke-virtual {p1}, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->getAuthUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 5
    invoke-static {}, Lcom/ca/mas/foundation/auth/MASApplication;->a()Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/ca/mas/foundation/auth/MASApplication;->a()Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;->a:Lcom/ca/mas/foundation/auth/MASApplication;

    invoke-virtual {p1, v0}, Lcom/ca/mas/foundation/auth/MASApplication$MASApplicationLauncher;->onWebAppLaunch(Lcom/ca/mas/foundation/auth/MASApplication;)V

    :cond_2
    return-void
.end method
