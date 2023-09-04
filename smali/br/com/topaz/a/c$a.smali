.class Lbr/com/topaz/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/v/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/a/c;->a(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/CurrentLocationCallback;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/a/c$a;->a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/a/c$a;->a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/CurrentLocationCallback;->onSuccess(Ljava/lang/String;)V

    invoke-static {}, Lbr/com/topaz/a/c;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onFailure(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/a/c$a;->a:Lbr/com/topaz/heartbeat/CurrentLocationCallback;

    invoke-virtual {v0, p1}, Lbr/com/topaz/heartbeat/CurrentLocationCallback;->onFailure(I)V

    invoke-static {}, Lbr/com/topaz/a/c;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
