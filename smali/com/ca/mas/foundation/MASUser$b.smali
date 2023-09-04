.class final Lcom/ca/mas/foundation/MASUser$b;
.super Lcom/ca/mas/core/MAGResultReceiver;
.source "MASUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASUser;->login(Lcom/ca/mas/foundation/MASAuthCredentials;Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/core/MAGResultReceiver<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASUser$b;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0}, Lcom/ca/mas/core/MAGResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ca/mas/core/error/MAGError;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ca/mas/foundation/MASUser;->b(Lcom/ca/mas/foundation/MASUser;)Lcom/ca/mas/foundation/MASUser;

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASUser$b;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v0, p1}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/ca/mas/foundation/MASResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASResponse<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ca/mas/foundation/MASUser$b;->a:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {p1}, Lcom/ca/mas/foundation/MASUser;->login(Lcom/ca/mas/foundation/MASCallback;)V

    return-void
.end method
