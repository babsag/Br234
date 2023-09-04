.class public final Lcaf/io/G;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaf/io/G$a;
    }
.end annotation


# instance fields
.field final a:Lcaf/io/G$a;

.field final b:I


# direct methods
.method public constructor <init>(Lcaf/io/G$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcaf/io/G;->a:Lcaf/io/G$a;

    .line 3
    iput p2, p0, Lcaf/io/G;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/G;->a:Lcaf/io/G$a;

    iget v1, p0, Lcaf/io/G;->b:I

    invoke-interface {v0, v1, p1}, Lcaf/io/G$a;->_internalCallbackOnClick(ILandroid/view/View;)V

    return-void
.end method
