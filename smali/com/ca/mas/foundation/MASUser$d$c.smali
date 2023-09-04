.class Lcom/ca/mas/foundation/MASUser$d$c;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASUser$d;->g(Ljava/util/LinkedList;Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASCallback<",
        "Lcom/ca/mas/foundation/MASUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic b:Ljava/util/LinkedList;

.field final synthetic c:Lcom/ca/mas/foundation/MASUser$d;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASUser$d;Lcom/ca/mas/foundation/MASCallback;Ljava/util/LinkedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$c;->c:Lcom/ca/mas/foundation/MASUser$d;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASUser$d$c;->a:Lcom/ca/mas/foundation/MASCallback;

    iput-object p3, p0, Lcom/ca/mas/foundation/MASUser$d$c;->b:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/foundation/MASUser;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/ca/mas/identity/user/ScimUser;->getSource()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "password"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$c;->c:Lcom/ca/mas/foundation/MASUser$d;

    invoke-virtual {v0, p1}, Lcom/ca/mas/identity/user/User;->populate(Lorg/json/JSONObject;)V

    .line 4
    invoke-static {}, Lcom/ca/mas/core/store/StorageProvider;->getInstance()Lcom/ca/mas/core/store/StorageProvider;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ca/mas/core/store/StorageProvider;->getTokenManager()Lcom/ca/mas/core/store/TokenManager;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ca/mas/core/store/TokenManager;->saveUserProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MAS"

    const-string v1, "Unable to persist user profile to local storage."

    .line 8
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$d$c;->a:Lcom/ca/mas/foundation/MASCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$d$c;->c:Lcom/ca/mas/foundation/MASUser$d;

    iget-object v1, p0, Lcom/ca/mas/foundation/MASUser$d$c;->b:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/ca/mas/foundation/MASUser$d$c;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/ca/mas/foundation/MASUser$d;->f(Lcom/ca/mas/foundation/MASUser$d;Ljava/util/LinkedList;Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/foundation/MASUser;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASUser$d$c;->a(Lcom/ca/mas/foundation/MASUser;)V

    return-void
.end method
