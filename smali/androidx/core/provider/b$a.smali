.class Landroidx/core/provider/b$a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/b;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:Landroidx/core/provider/b;


# direct methods
.method constructor <init>(Landroidx/core/provider/b;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/b$a;->c:Landroidx/core/provider/b;

    iput-object p2, p0, Landroidx/core/provider/b$a;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iput-object p3, p0, Landroidx/core/provider/b$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/b$a;->a:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroidx/core/provider/b$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method
