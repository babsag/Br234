.class public final synthetic Lcaf/io/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcaf/io/d0;

.field public final synthetic b:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/d0;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/c1;->a:Lcaf/io/d0;

    iput-object p2, p0, Lcaf/io/c1;->b:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcaf/io/c1;->a:Lcaf/io/d0;

    iget-object v1, p0, Lcaf/io/c1;->b:Landroidx/lifecycle/Observer;

    invoke-static {v0, v1, p1}, Lcaf/io/d0;->g(Lcaf/io/d0;Landroidx/lifecycle/Observer;Ljava/lang/Object;)V

    return-void
.end method
