.class final Landroid/app/Notification$InboxStyle$FlymeInjector;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$InboxStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFlymeExtras(Landroid/app/Notification$InboxStyle;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "inboxStyle"    # Landroid/app/Notification$InboxStyle;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "android.simSlots"

    .local v0, "EXTRA_SIM_SLOTS":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mFlymeSimSlots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static addFlymeLine(Landroid/app/Notification$InboxStyle;)V
    .locals 2
    .param p0, "inboxStyle"    # Landroid/app/Notification$InboxStyle;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mFlymeSimSlots:Ljava/util/ArrayList;

    sget v1, Landroid/app/NotificationBuilderExt;->SIM_SLOT_HIDE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static initFlymeExtFields(Landroid/app/Notification$InboxStyle;)V
    .locals 2
    .param p0, "inboxStyle"    # Landroid/app/Notification$InboxStyle;

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mFlymeSimSlots:Ljava/util/ArrayList;

    return-void
.end method
