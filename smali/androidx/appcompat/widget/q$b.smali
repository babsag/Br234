.class Landroidx/appcompat/widget/q$b;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/q;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:I

.field final synthetic d:Landroidx/appcompat/widget/q;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/q;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/q$b;->d:Landroidx/appcompat/widget/q;

    iput-object p2, p0, Landroidx/appcompat/widget/q$b;->a:Landroid/widget/TextView;

    iput-object p3, p0, Landroidx/appcompat/widget/q$b;->b:Landroid/graphics/Typeface;

    iput p4, p0, Landroidx/appcompat/widget/q$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/q$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/q$b;->b:Landroid/graphics/Typeface;

    iget v2, p0, Landroidx/appcompat/widget/q$b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
