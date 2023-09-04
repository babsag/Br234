.class Landroidx/core/provider/b$b;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic b:I

.field final synthetic c:Landroidx/core/provider/b;


# direct methods
.method constructor <init>(Landroidx/core/provider/b;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/b$b;->c:Landroidx/core/provider/b;

    iput-object p2, p0, Landroidx/core/provider/b$b;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iput p3, p0, Landroidx/core/provider/b$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/b$b;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget v1, p0, Landroidx/core/provider/b$b;->b:I

    invoke-virtual {v0, v1}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
