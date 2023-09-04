.class final Lcom/ca/mas/foundation/notify/Callback$a;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASCallback;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/notify/Callback$a;->a:Lcom/ca/mas/foundation/MASCallback;

    iput-object p2, p0, Lcom/ca/mas/foundation/notify/Callback$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/notify/Callback$a;->a:Lcom/ca/mas/foundation/MASCallback;

    iget-object v1, p0, Lcom/ca/mas/foundation/notify/Callback$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/ca/mas/foundation/MASCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
