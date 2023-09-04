.class Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASUserRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/identity/user/MASUserRepositoryImpl;->me(Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Lcom/ca/mas/foundation/MASResponse<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic b:Lcom/ca/mas/identity/user/MASUserRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/ca/mas/identity/user/MASUserRepositoryImpl;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->b:Lcom/ca/mas/identity/user/MASUserRepositoryImpl;

    iput-object p2, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/ca/mas/foundation/MASResponse;->getBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASResponseBody;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "preferred_username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->b:Lcom/ca/mas/identity/user/MASUserRepositoryImpl;

    new-instance v1, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c$a;

    invoke-direct {v1, p0}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c$a;-><init>(Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;)V

    invoke-virtual {v0, p1, v1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl;->getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/foundation/MASResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/identity/user/MASUserRepositoryImpl$c;->a(Lcom/ca/mas/foundation/MASResponse;)V

    return-void
.end method
