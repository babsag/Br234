.class Lcom/ca/mas/foundation/auth/MASApplication$b$a;
.super Lcom/ca/mas/foundation/auth/MASApplication;
.source "MASApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASApplication$b;->a(Lcom/ca/mas/foundation/MASResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/ca/mas/foundation/auth/MASApplication$b;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/auth/MASApplication$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->h:Lcom/ca/mas/foundation/auth/MASApplication$b;

    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->g:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/auth/MASApplication;-><init>(Lcom/ca/mas/foundation/auth/MASApplication$a;)V

    return-void
.end method


# virtual methods
.method public getAuthUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCustom()Lorg/json/JSONObject;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAS"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public renderEnterpriseIcon(Landroid/widget/ImageView;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/auth/MASApplication$c;

    invoke-direct {v0, p1}, Lcom/ca/mas/foundation/auth/MASApplication$c;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ca/mas/foundation/auth/MASApplication$b$a;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;

    invoke-direct {v0, p0, p0}, Lcom/ca/mas/foundation/auth/MASApplication$b$a$a;-><init>(Lcom/ca/mas/foundation/auth/MASApplication$b$a;Lcom/ca/mas/foundation/auth/MASApplication;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
