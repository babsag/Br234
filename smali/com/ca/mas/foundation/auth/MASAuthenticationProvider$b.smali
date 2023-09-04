.class Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;
.super Landroid/os/AsyncTask;
.source "MASAuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Lcom/ca/mas/foundation/MASResponse<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Exception;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/ca/mas/foundation/MASRequest;

.field c:Lcom/ca/mas/foundation/MASCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/foundation/MASCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ca/mas/foundation/MASRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->b:Lcom/ca/mas/foundation/MASRequest;

    .line 4
    iput-object p3, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->c:Lcom/ca/mas/foundation/MASCallback;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b$a;

    invoke-direct {p1, p0}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b$a;-><init>(Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->b:Lcom/ca/mas/foundation/MASRequest;

    invoke-virtual {p1, v2}, Lcom/ca/mas/core/http/MAGHttpClient;->execute(Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/foundation/MASResponse;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected b(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/ca/mas/foundation/MASResponse;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/ca/mas/foundation/MASResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Location"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->c:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ca/mas/foundation/MASCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->c:Lcom/ca/mas/foundation/MASCallback;

    invoke-virtual {v0, p1}, Lcom/ca/mas/foundation/MASCallback;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->a([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;->b(Landroid/util/Pair;)V

    return-void
.end method
