.class final Lcom/ca/mas/foundation/c$a;
.super Lcom/ca/mas/foundation/MASCallback;
.source "DeviceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/c;->i(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/c$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ca/mas/foundation/c$a;->a:Lcom/ca/mas/foundation/MASCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ca/mas/foundation/c;->a(Ljava/lang/Throwable;)I

    move-result v0

    const v1, 0xf815b

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/c$a;->a:Lcom/ca/mas/foundation/MASCallback;

    new-instance v1, Lcom/ca/mas/foundation/MASDeviceAttributeOverflowException;

    invoke-direct {v1, p1}, Lcom/ca/mas/foundation/MASDeviceAttributeOverflowException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/foundation/c$a;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/foundation/MASResponse;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/c$a;->a(Lcom/ca/mas/foundation/MASResponse;)V

    return-void
.end method
