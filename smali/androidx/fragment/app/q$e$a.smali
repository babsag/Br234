.class Landroidx/fragment/app/q$e$a;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/q$e;-><init>(Landroidx/fragment/app/q$e$c;Landroidx/fragment/app/q$e$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/q$e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/q$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/q$e$a;->a:Landroidx/fragment/app/q$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q$e$a;->a:Landroidx/fragment/app/q$e;

    invoke-virtual {v0}, Landroidx/fragment/app/q$e;->b()V

    return-void
.end method
