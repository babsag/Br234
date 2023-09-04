.class Lcom/ca/mas/foundation/MASDevice$a$a;
.super Ljava/lang/Object;
.source "MASDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASDevice$a;->deregister(Lcom/ca/mas/foundation/MASCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/MobileSso;

.field final synthetic b:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic c:Lcom/ca/mas/foundation/MASDevice$a;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASDevice$a;Lcom/ca/mas/core/MobileSso;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASDevice$a$a;->c:Lcom/ca/mas/foundation/MASDevice$a;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASDevice$a$a;->a:Lcom/ca/mas/core/MobileSso;

    iput-object p3, p0, Lcom/ca/mas/foundation/MASDevice$a$a;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ca/mas/foundation/MASDevice$a$a;->a:Lcom/ca/mas/core/MobileSso;

    invoke-interface {v0}, Lcom/ca/mas/core/MobileSso;->removeDeviceRegistration()V

    .line 2
    iget-object v0, p0, Lcom/ca/mas/foundation/MASDevice$a$a;->b:Lcom/ca/mas/foundation/MASCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/ca/mas/foundation/MASDevice$a$a;->b:Lcom/ca/mas/foundation/MASCallback;

    invoke-static {v1, v0}, Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
