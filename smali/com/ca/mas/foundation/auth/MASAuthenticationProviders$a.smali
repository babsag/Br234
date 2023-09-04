.class final Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$a;
.super Landroid/content/AsyncTaskLoader;
.source "MASAuthenticationProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->getAuthenticationProviders(Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ca/mas/core/MobileSsoFactory;->getInstance()Lcom/ca/mas/core/MobileSso;

    move-result-object v0

    invoke-interface {v0}, Lcom/ca/mas/core/MobileSso;->getAuthenticationProvider()Lcom/ca/mas/core/service/AuthenticationProvider;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$a;->a:Lcom/ca/mas/foundation/MASCallback;

    new-instance v2, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;

    invoke-direct {v2, v0}, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;-><init>(Lcom/ca/mas/core/service/AuthenticationProvider;)V

    invoke-static {v1, v2}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 2
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    return-void
.end method
