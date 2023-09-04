.class public final synthetic Lcom/combateafraude/passivefaceliveness/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/passivefaceliveness/PreviewActivity;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/passivefaceliveness/PreviewActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/c;->a:Lcom/combateafraude/passivefaceliveness/PreviewActivity;

    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/c;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/c;->a:Lcom/combateafraude/passivefaceliveness/PreviewActivity;

    iget-object v1, p0, Lcom/combateafraude/passivefaceliveness/c;->b:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/combateafraude/passivefaceliveness/PreviewActivity;->r(Lcom/combateafraude/passivefaceliveness/PreviewActivity;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
