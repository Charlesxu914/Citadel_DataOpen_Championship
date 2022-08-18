require(ggalluvial)
require(ggplot2)

# Plot for 2017
Plastic_waste_export_top20_2017<-subset(Plastic_waste_export_top20_2017, select = -c(X, Year))

Plastic_waste_export_top20_2017$id<-1:20
names(Plastic_waste_export_top20_2017)<-c("Export", "Import", "TradeQuantity", "id")

ggplot(Plastic_waste_export_top20_2017,
       aes(weight = TradeQuantity, axis1 = Export, axis2 =Import)) +
  geom_alluvium(aes(fill = Export), width = 1/12) +
  geom_stratum(width = 1/12, color = "grey")+
  geom_label(stat = "stratum", label.strata = TRUE, size=2)+
  scale_x_continuous(breaks = 1:2, labels = c("Export", "Import"))+
  ylab("Trade Quantities of Plastic Waste")


# Plot for 2018
Plastic_waste_export_top20_2018<-subset(Plastic_waste_export_top20_2018, select = -c(X, Year))

Plastic_waste_export_top20_2018$id<-1:20
names(Plastic_waste_export_top20_2018)<-c("Export", "Import", "TradeQuantity", "id")

ggplot(Plastic_waste_export_top20_2018,
       aes(weight = TradeQuantity, axis1 = Export, axis2 =Import)) +
  geom_alluvium(aes(fill = Export), width = 1/12) +
  geom_stratum(width = 1/12, color = "grey")+
  geom_label(stat = "stratum", label.strata = TRUE, size=2)+
  scale_x_continuous(breaks = 1:2, labels = c("Export", "Import"))+
  ylab("Trade Quantities of Plastic Waste")
