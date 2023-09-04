.class final Lcom/ca/mas/foundation/notify/Callback$b;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/notify/Callback;->onError(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/notify/Callback$b;->a:Lcom/ca/mas/foundation/MASCallback;

    iput-object p2, p0, Lcom/ca/mas/foundation/notify/Callback$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/notify/Callback$b;->a:Lcom/ca/mas/foundation/MASCallback;

    iget-object v1, p0, Lcom/ca/mas/foundation/notify/Callback$b;->b:Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/ca/mas/foundation/notify/Callback;->a(Ljava/lang/Throwable;)Lcom/ca/mas/foundation/MASException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
