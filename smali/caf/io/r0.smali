.class public final synthetic Lcaf/io/r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcaf/io/L;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/r0;->a:Lcaf/io/L;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcaf/io/r0;->a:Lcaf/io/L;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcaf/io/L;->U(Lcaf/io/L;Ljava/lang/Void;)V

    return-void
.end method
