.class Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a$a;
.super Landroid/database/ContentObserver;
.source "FontRequestEmojiCompatConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->e(Landroid/net/Uri;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a$a;->a:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a$a;->a:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    invoke-virtual {p1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->c()V

    return-void
.end method
