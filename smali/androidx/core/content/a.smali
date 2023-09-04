.class public final synthetic Landroidx/core/content/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/content/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/content/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/a;->a:Landroidx/core/content/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/content/a;->a:Landroidx/core/content/b;

    invoke-virtual {v0}, Landroidx/core/content/b;->b()V

    return-void
.end method
